# The NarrativeQA Reading Comprehension Challenge Dataset

This repository contains the NarrativeQA dataset. It includes the list of
documents with Wikipedia summaries, links to full stories, and questions and
answers.

For a detailed description of this see the paper
[The NarrativeQA Reading Comprehension
Challenge](https://arxiv.org/abs/1712.07040).  Please cite the paper if you use
this corpus in your work.


### Files

* documents.csv - contains document_id, set, kind, story_url, story_file_size,
  wiki_url, wiki_title, story_word_count, story_start, story_end. The word count
  is approximate after some basic cleanup and tokenization.
* third_party/wikipedia/summaries.csv - contains document_id, set, summary,
  summary_tokenized. The summaries are from Wikipedia.
* qaps.csv - contains document_id, set, question, answer1, answer2,
  question_tokenized, answer1_tokenized, answer2_tokenized.
* download_stories.sh - script to download the stories.
* compare.sh - compare downloaded story's file size to the document size we had.
  (At the time of publication, all stories have <3.5% file difference (except
  one), likely due to punctuation encoding.)

### Bibtex

```
@article{narrativeqa,
author = {Tom\'a\v s Ko\v cisk\'y and Jonathan Schwarz and Phil Blunsom and
          Chris Dyer and Karl Moritz Hermann and G\'abor Melis and
          Edward Grefenstette},
title = {The {NarrativeQA} Reading Comprehension Challenge},
journal = {Transactions of the Association for Computational Linguistics},
url = {https://TBD},
volume = {TBD},
year = {2018},
pages = {TBD},
}
```

### Dataset Metadata
The following table is necessary for this dataset to be indexed by search
engines such as <a href="https://g.co/datasetsearch">Google Dataset Search</a>.
<div itemscope itemtype="http://schema.org/Dataset">
<table>
  <tr>
    <th>property</th>
    <th>value</th>
  </tr>
  <tr>
    <td>name</td>
    <td><code itemprop="name">The NarrativeQA Reading Comprehension Challenge Dataset</code></td>
  </tr>
  <tr>
    <td>alternateName</td>
    <td><code itemprop="alternateName">NarrativeQA</code></td>
  </tr>
  <tr>
    <td>url</td>
    <td><code itemprop="url">https://github.com/deepmind/narrativeqa</code></td>
  </tr>
  <tr>
    <td>sameAs</td>
    <td><code itemprop="sameAs">https://github.com/deepmind/narrativeqa</code></td>
  </tr>
  <tr>
    <td>description</td>
    <td><code itemprop="description">This repository contains the NarrativeQA dataset. It includes the list of
documents with Wikipedia summaries, links to full stories, and questions and answers.</code></td>
  </tr>
  <tr>
    <td>provider</td>
    <td>
      <div itemscope itemtype="http://schema.org/Organization" itemprop="provider">
        <table>
          <tr>
            <th>property</th>
            <th>value</th>
          </tr>
          <tr>
            <td>name</td>
            <td><code itemprop="name">DeepMind</code></td>
          </tr>
          <tr>
            <td>sameAs</td>
            <td><code itemprop="sameAs">https://en.wikipedia.org/wiki/DeepMind</code></td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
  <tr>
    <td>license</td>
    <td>
      <div itemscope itemtype="http://schema.org/CreativeWork" itemprop="license">
        <table>
          <tr>
            <th>property</th>
            <th>value</th>
          </tr>
          <tr>
            <td>name</td>
            <td><code itemprop="name">Apache License, Version 2.0</code></td>
          </tr>
          <tr>
            <td>url</td>
            <td><code itemprop="url">https://www.apache.org/licenses/LICENSE-2.0.html</code></td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
  <tr>
    <td>citation</td>
    <td><code itemprop="citation">https://identifiers.org/arxiv:1712.07040</code></td>
  </tr>
</table>
</div>
