require 'csv'

 class MySelectQuery
     def initialize(content)
         @data = CSV.parse(content, headers:true)
     end

     def where(column_name, criteria)
         result = []
         @data.filter do |row|
             if row[column_name]==criteria
                 result << row.to_hash.values.join(',')
             end
         end
         result
     end    
 end