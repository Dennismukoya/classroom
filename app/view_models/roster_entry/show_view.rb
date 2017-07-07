# frozen_string_literal: true

class RosterEntry
  class ShowView < ViewModel
    attr_reader :roster_entry

    delegate :identifier, to: :roster_entry

    def linked?
      roster_entry.user.present?
    end

    def github_handle_text
      linked? ? '@' + roster_entry.user.github_user.login : 'Not linked'
    end

    def github_profile_url
      roster_entry.user.github_user.html_url
    end

    def github_avatar_url
      linked? ? roster_entry.user.github_user.login : 'Not linked'
    end

    def button_text
      linked? ? 'Unlink GitHub account' : 'Link GitHub account'
    end
  end
end
