#!/bin/bash
set -e

export OrchardCore__ConnectionString="User ID=$PGUSER;Password=$PGPASSWORD;Host=$PGHOST;Port=$PGPORT;Database=$PGDATABASE;"
export OrchardCore__DatabaseProvider="Postgres"

dotnet OrchardCoreStarterWeb.dll

exec "$@"