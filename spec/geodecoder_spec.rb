# encoding: UTF-8
require 'spec_helper.rb'
require 'geocoder'

require 'ulticoder'

describe 'GeoDecoder' do
  it 'accepts "Österreich" as "austria"' do
    result = Geocoder::search("Österreich").first
    country = result.address_components[0]['long_name']
    country.should == "Austria"
  end

  it 'accepts "Vereinigte Staaten" as "United States"' do
    result = Geocoder::search("Vereinigte Staaten").first
      country = result.address_components[0]['long_name']
      country.should == "United States"
  end
end