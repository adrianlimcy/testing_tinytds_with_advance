class Mif < ApplicationRecord


  def self.test
    p "hello"
  end

  def self.find_mif
    sql = "SELECT * FROM " + ENV["TABLE_NAME"] + " WHERE NAME LIKE 'AUSGROUP%' "
    client = TinyTds::Client.new(username: ENV["USERNAME"],
                                 password: ENV["PASSWORD"],
                                 dataserver: ENV["SERVER_NAME"],
                                 database: ENV["DATABASE"])
    result = client.execute(sql)
    results = result.each(symbolize_keys: true,
                          as: :array,
                          cache_rows: true,
                          empty_sets: true) do |rowset|
    end
    return results
  end
  def self.find_customer_via_brn
    sql = "SELECT customer.name FROM [customer-supp] INNER JOIN customer
    ON customer.[Cust-no] = [Customer-Supp].[Cust-no] WHERE [Business-reg] = '200507809E' "
    client = TinyTds::Client.new(username: ENV["USERNAME"],
                                 password: ENV["PASSWORD"],
                                 dataserver: ENV["SERVER_NAME"],
                                 database: ENV["DATABASE"])
    result = client.execute(sql)
    results = result.each(symbolize_keys: true,
                          as: :array,
                          cache_rows: true,
                          empty_sets: true) do |rowset|
    end
    return results
  end

end
