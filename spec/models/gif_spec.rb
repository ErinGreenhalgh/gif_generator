require 'rails_helper'

RSpec.describe Gif, type: :model do
  it {should belong_to(:category)}
end
