require 'net/http'
require 'json'
require 'pry'
require 'csv'

# frozen_string_literal: true
# Program to retrieve data from github repos
class RetrieveApi
  attr_reader :results

  def initialize(url)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @results = JSON.parse(response)
    fetch_details
    puts 'CSV Generated!!!!'
  end

  def fetch_details
    count = Hash.new(0)
    results.each do |result|
      count[result['language']] += 1
    end
    most_used_languages(count)
  end

  def most_used_languages(count)
    puts 'Least used 5 languages'
    sorted = count.sort_by { |k| k[1] }
    sorted = Hash[sorted]
    puts sorted.first(5).to_h.keys
    puts 'Most used 5 languages'
    puts sorted.max_by(5, &:last).to_h.keys
    write_csv(count)
  end

  def write_csv(count)
    CSV.open('file.csv', 'wb') do |csv|
      csv << %w[Name language created_at]
      results.each do |result|
        count.each do |k, _v|
          if result['language'] == k && !result['language'].nil?
            csv << [result['name'], result['language'], result['created_at']]
          end
        end
      end
    end
  end
end

url = 'https://api.github.com/orgs/google/repos'
RetrieveApi.new(url)
