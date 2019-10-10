require "rails/generators"

module Mongoid
  # Generate SyncMachine files for Mongoid.
  class SyncMachineGenerator < Rails::Generators::NamedBase
    class_option :subject, type: :string
    source_root File.expand_path('templates', __dir__)

    def create_payload_file
      template "payload.rb", "app/models/#{file_path}/payload.rb"
    end

    def create_sync_file
      template "sync.rb", "app/services/#{file_path}.rb"
    end

    private

    def subject
      options['subject'] || file_name.split(/_to_/).first
    end
  end
end
