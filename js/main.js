document.addEventListener('DOMContentLoaded', function () {
	// Переменные
	const form = document.getElementById('form');
	const elemsForm = document.querySelectorAll(".item__input");
	const checkbox = document.querySelector('.item__checkbox');

	// Обработчики
	form.addEventListener('submit', formSend);
	for (let elem of elemsForm) {
		elem.addEventListener('focus', function (event) {
			event.target.closest('.item').querySelector('.error').classList.remove('errorShow');
		})
	}
	checkbox.addEventListener('change', function (event) {
		event.target.closest('.item').querySelector('.error').classList.remove('errorShow');
	})




	// Вспомогательные ф-ии
	function formSend(event) {
		let error = formValidate(form);

		if (error) {
			alert("Данные введены некорректно!!!")
			event.preventDefault();
		}

		function formValidate(form) {
			let error = 0;
			let elementsRequired = document.querySelectorAll('.required');

			for (let elem of elementsRequired) {
				const input = elem;


				let blockError = elem.closest('.item').querySelector('.error');
				if (elem.classList.contains('email')) {
					if (!/^[^\s@]+@[^\s@]+$/.test(elem.value)) {
						blockError.classList.add('errorShow');
						error++;
					}
				} else if (elem.getAttribute("type") === "checkbox" && elem.checked === false) {
					blockError.classList.add('errorShow');
					error++;
				} else {
					if (!elem.value) {
						blockError.classList.add('errorShow');
						error++;
					}
				}
			}
			return error;
		}
	}
})