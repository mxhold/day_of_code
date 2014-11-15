require_relative './cell'

describe Cell do
  describe '#alive_next?' do
    context 'was dead' do
      context 'with 0 neighbors' do
        it 'dies' do
          next_state = Cell.new.alive_next?(0)
          expect(next_state).to eql false
        end
      end
      context 'with 1 neighbor' do
        it 'stays dead' do
          next_state = Cell.new.alive_next?(1)
          expect(next_state).to eql false
        end
      end
      context 'with 2 neighbors' do
        it 'stays dead' do
          next_state = Cell.new(false).alive_next?(2)
          expect(next_state).to eql false
        end
      end
      context 'with 3 neighbors' do
        it 'lives' do
          next_state = Cell.new(false).alive_next?(3)
          expect(next_state).to eql true
        end
      end
    end
    context 'was alive' do
      context 'with 2 neighbors' do
        it 'lives' do
          next_state = Cell.new(true).alive_next?(2)
          expect(next_state).to eql true
        end
      end
      context 'with 3 neighbors' do
        it 'lives' do
          next_state = Cell.new(true).alive_next?(3)
          expect(next_state).to eql true
        end
      end
      context 'with 4 neighbors' do
        it 'dies' do
          next_state = Cell.new(true).alive_next?(4)
          expect(next_state).to eql false
        end
      end
    end
  end
end

describe World do
  describe '#to_s' do
    it 'returns the current state of the cells' do
      world = World.new(
        {
          [0, 0] => true
        }
      )
      expect(world.to_s).to eql "1\n"
    end
  end
end
