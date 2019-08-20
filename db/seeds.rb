class Seed

  def self.begin
    seed = Seed.new
    seed.generate_location
  end

  def generate_location
    20.times do |i|
      location = Location.create!(
        name: Faker::Address.community,
        place: Faker::Address.state,
        content: Faker::Hipster.sentence
      )
      7.times do |i|
        reviews = location.reviews.create!(
          author: Faker::Name.name,
          content_body: Faker::Quote.famous_last_words,
          rating: Faker::Number.within(range: 1..10)
        )
      end
      puts "Location #{i}: name is #{location.name} and content is '#{location.content}'"
    end
  end
end

Seed.begin
