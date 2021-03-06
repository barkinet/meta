class AppAdminSerializer < ApplicationSerializer

  attributes :name, :pitch, :slug, :search_tags, :topic, :current_showcase, :url

  def search_tags
    object.tags
  end

  def topic
    (object.topics || []).first
  end

  def current_showcase
    object.showcases.active.first.try(:slug)
  end

  def url
    "/#{object.slug}"
  end

end
