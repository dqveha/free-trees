require 'rails_helper'
require 'pry'

describe Song do
  it { should belong_to(:album) }
end