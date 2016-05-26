require 'DockingStation'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }

	it 'releases working bikes' do
		bike = Bike.new
	 	expect(bike).to be_working
	end
    
    it { is_expected.to respond_to (:dock) }

  	it { is_expected.to respond_to (:bike) }

  	it 'remembers a bike' do 
  		bike = Bike.new
  		expect(subject.dock(bike)).to eq bike 
  	end 

  	it 'reports a bike' do 
  		bike = Bike.new
  		subject.dock(bike)
  		expect(subject.bike).to eq bike
  	end 

    it 'does not release a bike if no bikes available' do
    expect {subject.release_bike}.to raise_error("No bikes available")
    end

   it 'cannot dock bikes' do
   subject.dock(Bike.new)
   expect { subject.dock(Bike.new) }.to raise_error("No more spaces for bikes")
  end
end


