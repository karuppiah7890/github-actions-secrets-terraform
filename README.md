# github

This is an example on how to maintain and manage common GitHub Actions Secrets on GitHub across many private repositories when on a GitHub Free Plan

## Setup

Create `configs.env` by checking out `configs.env.sample` and putting in the right values

```bash
cp github/configs.env.sample github/configs.env
```

The `GITHUB_TOKEN` in `configs.env` should be a personal access token (PAT) (classic) and should have the following access -

- `repo` - all of `repo:status`, `repo_deployment`, `public_repo`, `repo:invite`, `security_events`
- The user creating the token should have `Admin` access to any of the GitHub private (or public) repositories whose secrets have to be managed. `Admin` access can be given by going to the repository's `Settings`` > `Collaborators and teams` > `Manage Access`
