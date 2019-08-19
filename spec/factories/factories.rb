require 'rails_helper'

FactoryBot.define do
  factory(:location) do
    name {'Swimming'}
    place {'My bathtub'}
    content {'Come swim'}
  end
end
