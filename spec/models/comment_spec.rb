require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should have_db_column :solution}
  it { should have_db_column :user_id}
  it { should have_db_column :post_id}
end
