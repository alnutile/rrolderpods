class ChangeName < ActiveRecord::Migration
	def change
		change_table :rrolds do |t|
			t.rename :order, :enumber
		end
	end
end
