toronto   = Deck.create(title: 'Toronto')
vancouver = Deck.create(title: 'Vancouver')
canada    = Deck.create(title: 'Canada')

forest_hill = Card.create(title: 'Forest Hill', description: 'See some big houses')
churrasco   = Card.create(title: 'Churrasco Villa', description: 'Badass chicken')
toronto.cards << [forest_hill, churrasco]

north_van = Card.create(title: 'North Vancouver', description: 'See some outdoorsy bastards')
vancouver.cards << north_van

canada.cards << [forest_hill, churrasco, north_van]