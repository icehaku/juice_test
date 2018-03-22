module SearchHelper
  def list_of_searches(list)
    if list.present?
      render partial: "search_list", locals: { list: list }
    else
      "No search was performed."
    end
  end
end
