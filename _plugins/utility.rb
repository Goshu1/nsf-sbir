require 'pry'
require 'rb-readline'

module Jekyll
  module Utility

    def debug(value, second_value = nil, third_value = nil)
      _type = value.class
      _second_type = second_value.class
      _third_type = third_value.class
       puts '---------------------'
       puts "#{value} is a #{_type}"
       puts '---------------------'
       binding.pry
    end

    def titlecase(words)
      return words.split(' ').map(&:capitalize).join(' ')
    end

    def clip_char(str, char = '-')
      str = str.to_s
      str = if str[0] == char
              str[1...str.length]
            else
              str
            end
      if str[-1] == char
        str[0...-1]
      else
        str
      end
    end

    def matches_url(page_url, url)
      if url.is_a? Array
        urls = url.map do |u|
          page_url = clip_char(page_url.to_s.downcase, '/').split('/')[0]
          u = clip_char(u.to_s.downcase, '/').split('/')[0]
          # if the url group is 'blog', match date strings
          is_blog_post = (u == 'blog') && (page_url.to_i.positive?)
          matching_url = (page_url == u) || is_blog_post
          matching_url || nil
        end
        urls.compact.any? || nil
      else
        page_url = clip_char(page_url.to_s.downcase, '/')
        url = clip_char(url.to_s.downcase, '/')
        page_url == url || nil
      end
    end

  end
end

Liquid::Template.register_filter(Jekyll::Utility)
