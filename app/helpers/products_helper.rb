module ProductsHelper

  #humanizamos el valor boolean de used
  def humanize_bool(value)
    return "No" unless value
    "Yes"
  end

end
