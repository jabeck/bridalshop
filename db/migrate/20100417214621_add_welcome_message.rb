class AddWelcomeMessage < ActiveRecord::Migration
  def self.up
    Message.create(:name => "Welcome Message", 
                          :message => "Welcome to Dan's Bridal and Tuxedo Online Store!",
                          :description => "This message will appear in the title of the /shop page.")
  end

  def self.down
  end
end
