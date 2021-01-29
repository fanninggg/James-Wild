class Homepage < ApplicationRecord
  belongs_to :project_one, class_name: "Project", optional: true
  belongs_to :project_two, class_name: "Project", optional: true
  belongs_to :project_three, class_name: "Project", optional: true
  belongs_to :project_four, class_name: "Project", optional: true
  has_rich_text :homepage_content
  has_rich_text :bronze_content
  has_rich_text :scrap_content
end
