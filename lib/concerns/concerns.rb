module Concerns
    module Findable
        def find_by_name(name)
          self.all.detect {|a| a.name == name}
        end

        def find_or_create_by_name(name)
          find_by_name(name) ? find_by_name(name) : self.create(name)
        end
        # def all
        #   self.all
        # end
        def create(name)
          self.new(name)
        end

        def destroy_all
          self.all.clear
        end

        def count
          self.all.count
        end
    end

    # module InstanceMethods
    #   def save
    #     self.all << self
    #   end
    # end

end