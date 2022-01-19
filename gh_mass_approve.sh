#!/usr/bin/env bash

pr_to_be_approved=$(
        gh api graphql --paginate -f query='
{
  search(query: "org:thoth-station in:title Enable TLS is:open", type: ISSUE, first: 100) {
    nodes {
      ... on PullRequest {
        number
        repository {
          name
        }
      }
    }
  }
}
' --jq .data.search.nodes
)

for k in $(jq '. | keys | .[]' <<<${pr_to_be_approved}); do
        pr=$(jq -r ".[$k]" <<<${pr_to_be_approved})
        pr_num=$(jq -r .number <<<${pr})
        repo_name=$(jq -r .repository.name <<<${pr})
        gh pr comment "https://github.com/thoth-station/$repo_name/pull/$pr_num" --body "/approve"
done

#end.
