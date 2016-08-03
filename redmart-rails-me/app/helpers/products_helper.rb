module ProductsHelper
  def gravatar_for(product, options = { size: 80 })
    product = Digest::MD5::hexdigest(product.description.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: product.name, class: "gravatar")
  end

end
