FROM ruby:3.1.2

WORKDIR /api_form_web
COPY api_form_web/Gemfile /api_form_web/Gemfile
COPY api_form_web/Gemfile.lock /api_form_web/Gemfile.lock
RUN bundle install
COPY ./api_form_web  /api_form_web
EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
