require 'uri'
require 'net/https'
require 'net/http'
require 'rubygems'

gem 'atom', '>= 0.3'
gem 'json', '>= 1.1.1'
gem 'googlebase', '>= 0.1.0'

require 'atom'
require 'json'
require 'google/base'
require 'google/reader/base'
require 'google/reader/count'
require 'google/reader/label'

module Google
  module Reader
    READER_URL            = Google::URL + "/reader"
    TOKEN_URL             = READER_URL + "/api/0/token"
    SUBSCRIPTION_LIST_URL = READER_URL + '/api/0/subscription/list'
    SUBSCRIPTION_EDIT_URL = READER_URL + '/api/0/subscription/edit'
    FEED_URL              = READER_URL + '/atom/feed/%s'
    LABELS_URL            = READER_URL + '/api/0/tag/list?output=json'
    LABEL_URL             = READER_URL + '/atom/user/-/label/%s'
    UNREAD_COUNT_URL      = READER_URL + '/api/0/unread-count?all=true&output=json'
    PACKAGE               = "user/-/state/com.google"
    
    module State
      READ                    = "#{PACKAGE}/read"
      KEPT_UNREAD             = "#{PACKAGE}/kept-unread"
      FRESH                   = "#{PACKAGE}/fresh"
      STARRED                 = "#{PACKAGE}/starred"
      BROADCAST               = "#{PACKAGE}/broadcast"
      READING_LIST            = "#{PACKAGE}/reading-list"
      TRACKING_BODY_LINK_USED = "#{PACKAGE}/tracking-body-link-used"
      TRACKING_EMAILED        = "#{PACKAGE}/tracking-emailed"
      TRACKING_ITEM_LINK_USED = "#{PACKAGE}/tracking-item-link-used"
      TRACKING_KEPT_UNREAD    = "#{PACKAGE}/tracking-kept-unread"
    end
  end
end