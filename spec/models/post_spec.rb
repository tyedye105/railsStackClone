require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should have_db_column :user_id}
  it { should have_db_column :content}
  it { should have_db_column :created_at}
  it { should have_db_column :updated_at}
  it { should validate_presence_of :content}
  it { should belong_to :user}
end
