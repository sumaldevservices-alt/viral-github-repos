#!/bin/bash
# Fetch viral GitHub repositories

echo "Fetching top viral GitHub repositories..."

# Use GitHub CLI to search (if authenticated)
if command -v gh &> /dev/null; then
    echo "Using GitHub CLI to fetch trending repositories..."
    # Search for popular repositories
    gh search repos --sort=stars --order=desc --max-results=10 > viral_repos_ghe.sh
    echo "
Top repositories fetched successfully!"
else
    echo "GitHub CLI not available"
fi
