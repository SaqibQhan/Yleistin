puts "default topics"

topics = ['leader', 'country', 'state', 'book', 'film', 'disease', 'actor', 'sport',
          'river', 'mountain', 'fruit', 'website', 'video game', 'software', 'food',
          'animal', 'bird', 'newspaper', 'tv channel', 'machine', 'designer',
          'painter', 'musician', 'singer', 'writer', 'sportsman', 'hotel',
          'company', 'programmer', 'gas']

topics.each do |topic|
  Topic.find_or_create_by(:title => topic)
end
puts "default questions"

leaders = ['Amama Mbabazi', 'Barack Obama', 'Mahinda Rajapaksa']
leaders.each do |leader|
  topic = Topic.find_by_title('leader')
  Question.find_or_create_by(:title => leader, :topic_id => topic.id)
end

countries = ['USA', 'Brazil', 'France']
countries.each do |country|
  topic = Topic.find_by_title('country')
  Question.find_or_create_by(:title => country, :topic_id => topic.id)
end

cities = ['Jaddah', 'Stockholm', 'Helsinki']
cities.each do |city|
  topic = Topic.find_by_title('state')
  Question.find_or_create_by(:title => city, :topic_id => topic.id)
end

books = ['Alexandra Adornetto', 'Lucky Luke', 'The Late, Great Planet Earth']
books.each do |book|
  topic = Topic.find_by_title('book')
  Question.find_or_create_by(:title => book, :topic_id => topic.id)
end

films = ['The Godfather', "Schindler's List", 'Toy Story']
films.each do |film|
  topic = Topic.find_by_title('film')
  Question.find_or_create_by(:title => film, :topic_id => topic.id)
end

diseases = ['Cancer', "HIV/AIDS", 'Sinusitis']
diseases.each do |disease|
  topic = Topic.find_by_title('disease')
  Question.find_or_create_by(:title => disease, :topic_id => topic.id)
end

actors = ['Johnny Depp', "Tom Hanks", 'Leonardo Dicaprio']
actors.each do |actor|
  topic = Topic.find_by_title('actor')
  Question.find_or_create_by(:title => actor, :topic_id => topic.id)
end

sports = ['Cricket', "Football", 'Hockey']
sports.each do |sport|
  topic = Topic.find_by_title('sport')
  Question.find_or_create_by(:title => sport, :topic_id => topic.id)
end

rivers = ['Nile', "Niger", 'Lina']
rivers.each do |river|
  topic = Topic.find_by_title('river')
  Question.find_or_create_by(:title => river, :topic_id => topic.id)
end

mountains = ['Mount Everest', "Nanga Parbat", 'Tirich Mir']
mountains.each do |mountain|
  topic = Topic.find_by_title('mountain')
  Question.find_or_create_by(:title => mountain, :topic_id => topic.id)
end

fruits = ['Morinda Citrifolia', "Rubus Spectabilis", 'Salacca Zalacca']
fruits.each do |fruit|
  topic = Topic.find_by_title('fruit')
  Question.find_or_create_by(:title => fruit, :topic_id => topic.id)
end

websites = ['Wikipedia', "Google", 'Dropbox']
websites.each do |website|
  topic = Topic.find_by_title('website')
  Question.find_or_create_by(:title => website, :topic_id => topic.id)
end

video_games = ['Grand Theft Auto', "Far Cry", 'Need For Speed']
video_games.each do |video_game|
  topic = Topic.find_by_title('video game')
  Question.find_or_create_by(:title => video_game, :topic_id => topic.id)
end

softwares = ['VLC', "Skype", 'Google Chrome']
softwares.each do |software|
  topic = Topic.find_by_title('software')
  Question.find_or_create_by(:title => software, :topic_id => topic.id)
end

foods = ['Basa', "Creole Jambalaya", 'Clam Chowder']
foods.each do |food|
  topic = Topic.find_by_title('food')
  Question.find_or_create_by(:title => food, :topic_id => topic.id)
end

animals = ['Hyena', "Hippopotamus", 'Tiger']
animals.each do |animal|
  topic = Topic.find_by_title('animal')
  Question.find_or_create_by(:title => animal, :topic_id => topic.id)
end

birds = ['Hummingbird', "Owl", 'Eagle']
birds.each do |bird|
  topic = Topic.find_by_title('bird')
  Question.find_or_create_by(:title => bird, :topic_id => topic.id)
end

newspapers = ['The Daily Mail', "The Sun", 'The Times of India']
newspapers.each do |newspaper|
  topic = Topic.find_by_title('newspaper')
  Question.find_or_create_by(:title => newspaper, :topic_id => topic.id)
end

tv_channels = ['Animal Planet', "Ten Sports", 'BBC']
tv_channels.each do |tv_channel|
  topic = Topic.find_by_title('tv channel')
  Question.find_or_create_by(:title => tv_channel, :topic_id => topic.id)
end

machines = ['Carburetor', "Treadmill", 'Printer']
machines.each do |machine|
  topic = Topic.find_by_title('machine')
  Question.find_or_create_by(:title => machine, :topic_id => topic.id)
end

designers = ['Trina Turk', "Ekaterina Ilyukhina", 'Hausach Couture']
designers.each do |designer|
  topic = Topic.find_by_title('designer')
  Question.find_or_create_by(:title => designer, :topic_id => topic.id)
end

painters = ['Paul Cézanne', "Jackson Pollock", 'Pablo Picasso']
painters.each do |painter|
  topic = Topic.find_by_title('painter')
  Question.find_or_create_by(:title => painter, :topic_id => topic.id)
end

musicians = ['Bon Jovi', "Elton John", 'Lady Gaga']
musicians.each do |musician|
  topic = Topic.find_by_title('musician')
  Question.find_or_create_by(:title => musician, :topic_id => topic.id)
end

singers = ['Gustavo Santaolalla', "Justin Bieber", 'Shakira Isabel']
singers.each do |singer|
  topic = Topic.find_by_title('singer')
  Question.find_or_create_by(:title => singer, :topic_id => topic.id)
end

writers = ['Franz Kafka', "William Shakespeare", 'William Faulkner']
writers.each do |writer|
  topic = Topic.find_by_title('writer')
  Question.find_or_create_by(:title => writer, :topic_id => topic.id)
end

sportsmen = ['Tiger Woods', "Rafael Nadal", 'Sachin Tendulkar']
sportsmen.each do |sportsman|
  topic = Topic.find_by_title('sportsman')
  Question.find_or_create_by(:title => sportsman, :topic_id => topic.id)
end

hotels = ['Emirates Palace', "The Westin Excelsior", ' Burj Al Arab']
hotels.each do |hotel|
  topic = Topic.find_by_title('hotel')
  Question.find_or_create_by(:title => hotel, :topic_id => topic.id)
end

companies = ['Nestle', "GSK", ' Honda']
companies.each do |company|
  topic = Topic.find_by_title('company')
  Question.find_or_create_by(:title => company, :topic_id => topic.id)
end

programmers = ['Mark Zuckerberg', "Steve Jobs", ' Bill Gates']
programmers.each do |programmer|
  topic = Topic.find_by_title('programmer')
  Question.find_or_create_by(:title => programmer, :topic_id => topic.id)
end

gases = ['Oxygen', "Methane", ' Carbon Dioxide']
gases.each do |gas|
  topic = Topic.find_by_title('gas')
  Question.find_or_create_by(:title => gas, :topic_id => topic.id)
end
