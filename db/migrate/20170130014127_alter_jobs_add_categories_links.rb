class AlterJobsAddCategoriesLinks < ActiveRecord::Migration
  def change
  	add_column :jobs, :category, :string
  	add_column :jobs, :facebook, :varchar
  	add_column :jobs, :twitter, :varchar
  	add_column :jobs, :application, :varchar 
  end
end
