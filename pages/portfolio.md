---
title: Portfolio
permalink: /portfolio/
featuredCompanies:
layout: secondary
section_image: "/assets/img/bg/bolt.png"
section_image_caption: |
  From lab to market - [Bolt Threads](#) genetically engineered yeast brew silk proteins that can be spun into fibers.
scripts:
- src: /assets/js/shuffle.js
  async: true
---

{% assign recent_date = site.data.awards_meta['recent_date'] | date: "%m/%Y" | default: 'DATE' %}

<section class="section-header background-light-neutral">
<div class="usa-section usa-content usa-grid" markdown="1">

# Portfolio
Since 2012, America’s Seed Fund powered by NSF has made nearly 2,500 awards to startups and small businesses. Since 2010, our awardees have had 62 exits and have received $3.2 billion in private investment. We encourage you to explore this list of assorted companies we've funded.


<form onsubmit="allAwards(this.a1.value); return false;" class="awards-search-form">
 {% comment %}
 <input id="current" type="radio" name="awards-search" value="currentAwards">
 <label for="current">Current NSF SBIR/STTR Awards</label>

 <input id="all" type="radio" name="awards-search" value="currentAwards">
 <label for="all">All NSF SBIR/STTR Awards</label>
 {% endcomment %}

    <input type="text" name="a1" id="awards-search" class="awards-search-input" size="20" placeholder="" />
    <label class="text-small" for="awards-search">Search America's Seed Fund awardees</label>
    <input type="submit" class="usa-button usa-button-primary usa-sr-only" value="Search" />
</form>

</div>
</section>

<section class="background-light-neutral" markdown="1">
<div class="usa-section-tight-top usa-section usa-content usa-grid" markdown="1">
<h2 class="subhead text-small">Featured alumni and exits</h2>
{% include featured-companies.html %}
</div>
</section>

<section class="background-light-neutral" markdown="1">
<div class="usa-section-tight-top usa-section usa-content usa-grid" markdown="1">

**View our current awardees,** who are still completing the research outlined in their proposals and who haven't yet reached the estimated ends of their award terms. [View current Phase I awardees]({{ site.baseurl }}/awardees/phase-1/), [Current Phase II awardees]({{ site.baseurl }}/awardees/phase-2/), or our [most recent ({{ recent_date }}) Phase I awardees]({{ site.baseurl }}/awardees/phase-1-recent/).

</div>
</section>

<section class="section-background-image">
  <div class="usa-grid">
    <div class="usa-width-one-third">
      <div class="caption">{{ page.section_image_caption | liquify | markdownify }}</div>
    </div>
  </div>
</section>

<section class="background-light-neutral">
<div class="usa-section usa-content usa-grid">
<h2 class="text-large">We fund varied tech sectors.</h2>
 <p class="text-medium">Each year, we fund roughly 400 companies across nearly all technology and market sectors. Download a <a href="https://seedfund.nsf.gov/assets/files/applicants/Combined.pdf">searchable PDF</a> of the full list of technology topic areas that also includes descriptions of the subtopics.</p>

{% include tech-subtopics.html %}
</div>
</section>

