require 'rails_helper'

describe Section do
  it { should validate_presence_of :heading }
  it { should have_many :lessons }
  it { should belong_to :chapter }
end
