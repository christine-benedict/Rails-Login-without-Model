class User
    # < ApplicationRecord
    attr_reader :fullname, :userid, :password
    # attr_accessible :fullname, :address, :city, :state, :zip, :country, :email, :phone, :userid, :password
    def initialize(fullname = "New User", address = "", city = "", state = "", zip = "", country = "", email = "", phone = "", userid, password)
        @fullname = fullname
        @address = address
        @city = city
        @state = state
        @zip = zip
        @country = country
        @email = email
        @phone = phone
        @userid = userid
        @password = password
    end
end
