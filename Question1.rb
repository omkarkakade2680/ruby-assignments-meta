Question 1:

example 3:

    def sum(*args)
        args.inject { |sum, n| sum + n }
        # or
        args.reduce(:+) 
    end
    sum(2,3) #5
    sum(3,4,5) #12

example 2: 
   
  class User
    attr_accessor :name
  end
  
  user = User.new
  user.name = "Omkar"

example 1:
 
def get_addresses
    addresses = []
    User.all.each do |user|
        addresses << user.address if user.address.city.present?
    end
end
