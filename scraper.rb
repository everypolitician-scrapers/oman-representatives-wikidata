#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new('Category:Omani politicians', 'en').member_titles |
     WikiData::Category.new('Category:Omani women in politics', 'en').member_titles |
     WikiData::Category.new('Category:Government ministers of Oman', 'en').member_titles |
     WikiData::Category.new('Category:Foreign ministers of Oman', 'en').member_titles |
     WikiData::Category.new('Category:Members of the Consultative Assembly of Oman', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en })

