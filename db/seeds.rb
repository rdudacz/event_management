def seed_users
  puts 'Seeding users started.'
  User.create!(email: "admin@test.com", password: "admin123456", password_confirmation: "admin123456")
  User.create!(email: "pepe@test.com", password: "pepe123456", password_confirmation: "pepe123456")
  User.create!(email: "alex@test.com", password: "alex123456", password_confirmation: "alex123456")
  User.create!(email: "radek@test.com", password: "radek12346", password_confirmation: "radek12346")
  User.create!(email: "guest@test.com", password: "guest123456", password_confirmation: "guest123456")
  puts 'Seeding users done.'
end

def seed_events
  puts 'Seeding events started.'
  user = User.first
  Event.create!(name: "London Evening Shoot",
                description: "Evening shoot around Southbank area. Meet outside Pret in Southbank.",
                date: "2023-12-13 20:00:00",
                location: "Pret, Unit 4, Royal Festival Hall, Belvedere Rd, London SE1 8XX",
                user_id: user.id)
  Event.create!(name: "London Christmas Networking Event for Tech Professionals",
                description: "Ho ho ho, it's that time of year again. Our annual tech meet-up is fast approaching and we'd love you to join us for a sparkling evening of festive fun.",
                date: "2023-12-13 17:30:00",
                location: "26 Ludgate Hill, London",
                user_id: user.id)
  Event.create!(name: "Data & Drinks - Data Science Career Growth Meetup",
                description: "Last meetup of 2023! This is a monthly low-key event to discuss data and get to know other data people in London over drinks. - there will be free pizza starting at 8pm courtesy of The Oliver Conquest Please RSVP in advance. Hope to see you there!",
                date: "2023-12-19 19:00:00",
                location: "70 Leman Street, Aldgate, London",
                user_id: user.id)
  Event.create!(name: "Intentional Friending: A Playful and Conscious Way to Make new Conscious",
                description: "Are you seeking authentic new connections in London? Desiring to go beyond the superficial and establish meaningful friendships in a warm and welcoming atmosphere? Then grab your calendar, because you just found it!",
                date: "2023-12-09 16:00:00",
                location: "Cromer Street, London",
                user_id: user.id)
  Event.create!(name: "Building your AI capability",
                description: "AI adoption is a big topic in all industries right now. Using new technologies is tough, and often, company leaders are cautious about it. It’s also hard to create a work culture that’s comfortable with AI. One effective way to get everyone on board with AI is to show them successful examples and early wins. For instance, making predictions using data that companies already have can be a great start. Jie and Colin will share their experiences with using AI in their organizations. They’ll talk about how they made it easier for everyone to work with AI, especially in making predictions based on the data that is already available in our organizations.",
                date: "2023-12-12 11:00:00",
                location: "Online",
                user_id: user.id)
  Event.create!(name: "Solve a mystery at the mental hospital",
                description: "Download Superstar Detective on android and solve Cuckoo's Nest together. The patients in the mental hospital, are they really out of their minds, or are they heroes saving the world? Instructions: Link to download the game: https://play.google.com/store/apps/details?id=com.cloudiva.superstardetective Find the case Cuckoo's Nest in the library and start a game room**.** When the players are ready, the game starts. Read your personal story and search clues together. Talk to each other and compare your timelines. Find out the killer! Happy sleuthing!",
                date: "2023-12-10 20:00:00",
                location: "Online",
                user_id: user.id)
  Event.create!(name: "HR Roundabout - A round up of latest issues in HR and Employment Law",
                description: "It would be great to see you again in-person, for the latest edition of HR Roundabout. As ever, we hope to provide an excellent networking and knowledge-share opportunity for People professionals and employment lawyers! Based on the success of our last session, we are sticking with a breakfast MeetUp instead of evening format. Hopefully this will work for you! We will also be hosting this one at TotallyMoney, near Old Street. Over a coffee and croissant, we will talk through the latest case studies and ideas about best practice and there will be the opportunity to ask questions and discuss and sense-check your approaches with peers. 08:15 - Arrivals 08:30 - Session start 09:30 - Session end, time for a quick chat before you head off!",
                date: "2023-12-12 08:15:00",
                location: "16 Brunswick Place, London",
                user_id: user.id)
  Event.create!(name: "BAME/POC Autistic Online Meet",
                description: "Greetings fellow POC/BAME Autists! Join us for a pioneering online meet and greet event exclusively crafted for Black, Asian, Minority Ethnic (BAME), and People of Color (POC) Autistics. This is a space specifically dedicated to fostering POC/BAME autistic solidarity and unity, separate from more mainstream autistic spaces.",
                date: "2023-12-10 11:00:00",
                location: "Online",
                user_id: user.id)
  Event.create!(name: "Mix & Mingle At The Ned, London",
                description: "Come and join the D&S group in an ambient setting of fun and background music, let your hair down, forget your worries and make friends with like minded people. We look forward to meeting you. We will be located at the main bar area",
                date: "2023-12-09 20:00:00",
                location: "27 Poultry, London",
                user_id: user.id)
  Event.create!(name: "Online Discussion; Martin Scorsese's Goodfellas",
                description: "As part of our winter season on Martin Scorsese's illustrious carreer, join us to discuss what might be considered Marty's most beloved film.",
                date: "2023-12-21 20:0:00",
                location: "Online",
                user_id: user.id)
  puts 'Seeding events done.'
end

self.seed_users
self.seed_events
