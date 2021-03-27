FROM node

LABEL repository="https://github.com/tibotiber/hasura-action"
LABEL homepage="https://github.com/tibotiber/hasura-action"
LABEL maintainer="Thibaut Tiberghien <thibaut@smplrspace.com>"

LABEL com.github.actions.name="GitHub Action for Hasura"
LABEL com.github.actions.description="Wraps the Hasura CLI to enable common commands."
LABEL com.github.actions.icon="terminal"
LABEL com.github.actions.color="gray-dark"

RUN npm i -g hasura-cli@2.0.0-alpha.5

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
