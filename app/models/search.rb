class Search < ApplicationRecord
  before_save :downcase_and_strip

  def downcase_and_strip
    self.term = self.term.downcase.strip
  end
end
