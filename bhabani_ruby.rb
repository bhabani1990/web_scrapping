require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'active_record'

doc = Nokogiri::HTML(open('http://www.simplyrecipes.com/index/'))
$arr2 = Array.new
doc.xpath('//*[contains(concat( " ", @class, " " ), concat( " ", "entry-content", " " ))]//p/a/@href').each_with_index do |node, i|
   $arr2 << node.text
  break if i == 5;
 end
$arr1 = Array.new
doc.xpath('//*[contains(concat( " ", @class, " " ), concat( " ", "entry-content", " " ))]//p/a').each_with_index do |node, i|
   $arr1 << node.text
  break if i == 5;
 end


$arr1.each do |a1|
puts a1
end


$arr2.each do |a2|
puts a2
end

require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'active_record'

doc = Nokogiri::HTML(open('http://www.simplyrecipes.com/index/'))
$arr2 = Array.new
doc.xpath('//*[contains(concat( " ", @class, " " ), concat( " ", "entry-content", " " ))]//p/a/@href').each_with_index do |node, i|
   $arr2 << node.text
  break if i == 5;
 end
$arr1 = Array.new
doc.xpath('//*[contains(concat( " ", @class, " " ), concat( " ", "entry-content", " " ))]//p/a').each_with_index do |node, i|
   $arr1 << node.text
  break if i == 5;
 end


$arr1.each do |a1|
puts a1
end


$arr2.each do |a2|
puts a2
end


ActiveRecord::Base.establish_connection(  
:adapter => "mysql2",  
:host => "localhost",  
:database => "rec",
:username => "root",
:password => "bhabani123"
)
db = Mysql.new("localhost", "root", "", "")
class Rcp < ActiveRecord::Base  
end

