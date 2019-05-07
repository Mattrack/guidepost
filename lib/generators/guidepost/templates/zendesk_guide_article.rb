class ZendeskGuideArticle < ActiveRecord::Base
    belongs_to :zendesk_guide_section
    belongs_to :zendesk_guide_user_segment
    belongs_to :zendesk_guide_permission_group

    has_many :zendesk_guide_article_attachments

    validates :title, presence: true
    validates :locale, presence: true

    validates :url, format: { with: /https:\/\/(\S+).zendesk.com\/api\/v2\/help_center\/(\S+)\/articles\/(\S+).json/, message: "Only allows for a valid Zendesk JSON endpoint" }
end