class ApplicationController < ActionController::API

  def apply_pagination collection
    collection.page(params[:page] || 1).per(params[:limit] || 20)
  end

  def pagination(collection)
    {
        current_page:  collection&.current_page || 1,
        next_page:     collection&.next_page,
        previous_page: collection&.prev_page,
        total_pages:   collection&.total_pages || 1,
        per_page:      collection&.limit_value,
        total_entries: collection&.total_count
    }
  end


end
