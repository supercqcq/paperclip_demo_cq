require 'rails_helper'

RSpec.describe User, :type => :model do
    describe "GET /users" do
        it "works! (now write some real specs)" do
            it { should validate_presence_of :name }
            it { should_not validate_attachment_presence :avatar }
            it { should validate_attachment_content_type(:avatar).allowing('image/png', 'image/jpg', 'image/jpeg').rejecting('text/plain', 'text/html')}
            it { should validate_attachment_size(:avatar).less_than(5.megabytes) }
        end
    end
end
