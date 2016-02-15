# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
assets = Rails.application.config.assets

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# setup bower components folder for lookup
assets.paths << Rails.root.join('vendor', 'assets', 'components')
# fonts
assets.precompile << /\.(?:svg|eot|woff|ttf)$/
# images
assets.precompile << /\.(?:png|jpg)$/
# precompile vendor assets
assets.precompile += %w( base.js )
assets.precompile += %w( base.css )
# precompile themes
assets.precompile += ['angle/themes/theme-a.css',
                      'angle/themes/theme-b.css',
                      'angle/themes/theme-c.css',
                      'angle/themes/theme-d.css',
                      'angle/themes/theme-e.css',
                      'angle/themes/theme-f.css',
                      'angle/themes/theme-g.css',
                      'angle/themes/theme-h.css'
                      ]
# Controller assets
assets.precompile += [# Scripts
                      'singleview.js',
                      # Stylesheets
                      'singleview.css'
                      ]