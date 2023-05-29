resource "google_pubsub_topic" "pubsub" {
  name = "topic_from_tf"
}
resource "google_pubsub_subscription" "subs" {
  topic = google_pubsub_topic.pubsub.name
  name = "subs_from_tf"
}