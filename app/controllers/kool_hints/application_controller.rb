class KoolHints::ApplicationController < ApplicationController
  helper_method :return_to_path

  def return_to_path
    suggested_return_to = params[:return_to]

    # skip anything that looks doesn't look like an internal path
    if suggested_return_to && suggested_return_to =~ /\A\/\w/
      suggested_return_to
    else
      root_path
    end
  end
end

