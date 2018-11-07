class CreateCommentaires < ActiveRecord::Migration[5.2]
	def change
		create_table :commentaires do |t|
			t.belongs_to :pin, index:true #Un com appartient a un PIN
			t.belongs_to :user, index:true #Un com appartient a un USERS

			t.string :content

			t.timestamps
		end
	end
end
