class CreateReviewersSessionsinreview < ActiveRecord::Migration
  def change
    create_table :reviewers_sessionsinreviews do |t|
    	t.integer :reviewer_id
    	t.integer :sessions_in_review_id
    end
  end
end
