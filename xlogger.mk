site/index.html::
	n=0; for i in `ls -1t content| head -2 | perl -pe 's/\.\w+?$$//'`; do n=$$(($$n+1)); ln -fs $$i $(SITE)/$$n; done
	-rm $@
	tt-render --path=$(TEMPLATE):site --data=config.yaml xlogger-index.html > $@

