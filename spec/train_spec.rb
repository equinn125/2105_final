require './lib/car'
require './lib/train'

RSpec.describe Train do
    it "exists" do
      train1 = Train.new({name: 'Thomas',
      type: 'Tank'})

      expect(train1).to be_an_instance_of(Train)
  end

    it "has attributes" do
      train1 = Train.new({name: 'Thomas',
      type: 'Tank'})

      expect(train1.name).to eq('Thomas')
      expect(train1.type).to eq('Tank')
      expect(train1.cargo).to eq({})
    end

  describe 'methods' do
    it "can count cars" do
      train1 = Train.new({name: 'Thomas',
      type: 'Tank'})
      car1 = Car.new({type: 'Mail', weight: 5})

      expect(train1.count_cars(car1)).to eq(0)
    end

    it "can add cars" do
      train1 = Train.new({name: 'Thomas',
      type: 'Tank'})
      car1 = Car.new({type: 'Mail', weight: 5})
      car2 = Car.new({type: 'Passengers', weight: 1})

      train1.add_cars(car1, 2)

      expect(train1.cargo).to eq(car1, 2)

    end
  end
end
