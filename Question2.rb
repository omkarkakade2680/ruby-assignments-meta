Question 2: 
    class User
        attr_accessor :status
        def active?
            self.status == "active"
        end

        def inactive?
            self.status == "inactive"
        end
        
        def pending
            self.status == "pending"
        end
    end

    user = User.new
    user.active?  
    # False
    user.inactive? 
    # False

#OR

#tring to achive using MetaProgramming
    
    
    class User
        status = %w(Active Inactive Pending)
        attr_accessor :status
       
        status.each do |status|
          define_method("#{status.downcase}?") do
            self.status == status
          end
        end
    end

    
      user = User.new
      user.active?  
      user.inactive? 
