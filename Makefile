SPEC=https://gitlab.com/thorchain/midgard/-/raw/master/pkg/delivery/http/openapi-v1.0.0.yml

# generate rust client for the thorchain/midgard api
generate:
	docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate \
		-i ${SPEC} \
		-g rust \
		-o /local/