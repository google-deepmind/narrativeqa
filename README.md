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
