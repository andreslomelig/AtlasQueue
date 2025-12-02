package core

type JobStatus string

const (
    JobStatusPending    JobStatus = "pending"
    JobStatusInProgress JobStatus = "in_progress"
    JobStatusCompleted  JobStatus = "completed"
    JobStatusFailed     JobStatus = "failed"
)

type Job struct {
    ID          string
    Queue       string
    Payload     []byte
    Status      JobStatus
}
