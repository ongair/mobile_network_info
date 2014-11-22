require 'csv'

module MobileNetworkInfo

  def self.get_carriers_by_country_code code
    file = "lib/carriers.csv"
    search_criteria =  { '3166' => code }
 
    #   - The CSV has a header line, if not look at :headers option in CSV.new
    #     http://ruby-doc.org/stdlib-1.9.3/libdoc/csv/rdoc/CSV.html#method-c-new
    options = { :headers    => :first_row,
                :converters => [ :numeric ] }
     
    # we'll save the matches here
    matches = nil
     
    # save a copy of the headers
    headers = nil
     
    CSV.open( file, "r", options ) do |csv|
     
      # Since CSV includes Enumerable we can use 'find_all'
      # which will return all the elements of the Enumerble for 
      # which the block returns true
     
      matches = csv.find_all do |row|
        match = true
        search_criteria.keys.each do |key|
          match = match && ( row[key] == search_criteria[key] )
        end
        match
      end

      headers = csv.headers
    end    
    results = matches.collect { |row|
      {
        name: row[7],
        country_code: row[6],
        country_name: row[5],
        mcc: row[0],
        mnc: row[2]
      }
    }
    puts results
  end
end