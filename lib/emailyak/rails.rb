module EmailYak
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_configuration do
        EmailYak::EMAILYAK_CONFIG = YAML.load_file(::Rails.root.join('config', 'emailyak_config.yml'))[::Rails.env]
      end
    end
  end
end