
def create_boards
  Board.create(name: 'Food', description: 'Food items to choose from')
  Board.create(name: 'Outing', description: 'Outing items to choose from')
  Board.create(name: 'Activity', description: 'Activity items to choose from')
  Board.create(name: 'Video', description: 'Video to watch')
end

def create_items
  Item.create(name: 'Crackers', description: 'Crackers', image: 'defaul.png')
  Item.create(name: 'Pears', description: 'Pears', image: 'defaul.png')
  Item.create(name: 'Chips', description: 'Chips', image: 'defaul.png')

  Item.create(name: 'Drive', description: 'Go for a drive', image: 'defaul.png')
  Item.create(name: 'Walk', description: 'Go for a walk', image: 'defaul.png')
  Item.create(name: 'Store', description: 'Go to the store', image: 'defaul.png')

  Item.create(name: 'Game', description: 'Play a game', image: 'defaul.png')
  Item.create(name: 'Dust balls', description: 'Pick and blow dust balls', image: 'defaul.png')
  Item.create(name: 'Drawing', description: 'Draw on paper', image: 'defaul.png')

  Item.create(name: 'Shirley Temple', description: 'Shirley Temple movies and clips', image: 'defaul.png')
  Item.create(name: 'Thomas the Tank Engine', description: 'Thomas and Friends', image: 'defaul.png')
  Item.create(name: 'Heigh Ho', description: 'Disney songs', image: 'defaul.png')
end

def create_board_items
  BoardItem.create(board_id: 1, item_id: 1)
  BoardItem.create(board_id: 1, item_id: 2)
  BoardItem.create(board_id: 1, item_id: 3)

  BoardItem.create(board_id: 2, item_id: 4)
  BoardItem.create(board_id: 2, item_id: 5)
  BoardItem.create(board_id: 2, item_id: 6)

  BoardItem.create(board_id: 3, item_id: 7)
  BoardItem.create(board_id: 3, item_id: 8)
  BoardItem.create(board_id: 3, item_id: 9)

  BoardItem.create(board_id: 4, item_id: 10)
  BoardItem.create(board_id: 4, item_id: 11)
  BoardItem.create(board_id: 4, item_id: 12)
end

def main
  create_boards
  create_items
  create_board_items
end

main
