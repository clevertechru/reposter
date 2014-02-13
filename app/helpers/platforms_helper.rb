module PlatformsHelper
  def platform_types_list
    [
        [t('platforms.types.destination'), Platform::TYPE_DESTINATION],
        [t('platforms.types.source'), Platform::TYPE_SOURCE]
    ]
  end
end
