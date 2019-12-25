FROM alpine:3.11.2

ENV HOME /root

RUN apk update && apk upgrade

RUN apk add --no-cache bash curl git findutils vim
RUN curl --fail --no-location --output $HOME/.vimrc \
		https://raw.githubusercontent.com/barutkin/dotfiles/master/vimrc.mac && \
	vim -i NONE +PlugInstall +quitall

CMD ["vim"]
